using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using IzyMarketingMailerLog;
using System.Web;
using Newtonsoft.Json.Linq;
using IzyMarketingMailerLog.Enums;

namespace IzyMarketingMailerLog.Controllers
{
    public class EventMetricsController : ApiController
    {
        private MailerLogContext db = new MailerLogContext();
        public const string TRACK_EVENT = "track_event";
        public const string MESSAGE_EVENT = "message_event";

        // GET: api/EventMetrics
        public IQueryable<EventMetrics> GetEventMetrics()
        {
            return db.EventMetrics;
        }

        // GET: api/EventMetrics/5
        [ResponseType(typeof(EventMetrics))]
        public IHttpActionResult GetEventMetrics(long id)
        {
            EventMetrics eventMetrics = db.EventMetrics.Find(id);
            if (eventMetrics == null)
            {
                return NotFound();
            }

            return Ok(eventMetrics);
        }

        // PUT: api/EventMetrics/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutEventMetrics(long id, EventMetrics eventMetrics)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != eventMetrics.Id)
            {
                return BadRequest();
            }

            db.Entry(eventMetrics).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!EventMetricsExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/EventMetrics
        //[ResponseType(typeof(EventMetrics))]
        //public IHttpActionResult PostEventMetrics()
        //{
        //    var httpRequest = Request.Content.ReadAsStringAsync();
        //    var jsonRequest = httpRequest.Result;
        //    var jsonObjects = JArray.Parse(jsonRequest);

        //    try
        //    {
        //        foreach (JObject childContent in jsonObjects.Children<JObject>())
        //        {
        //            var child = childContent["msys"].Value<JObject>();
        //            foreach (JProperty propertyBegin in child.Properties())
        //            {
        //                var typeEvent = propertyBegin.Name;
        //                var fullChild = child[typeEvent].Value<JObject>();
        //                var campaignId = Convert.ToInt64(child[typeEvent]["campaign_id"].ToString());

        //                var campaign = db.Campaigns.Find(campaignId);
        //                if (campaign != null)
        //                {
        //                    campaign.Status = (int)CampaignStatus.Procesada;
        //                    var eventMetric = new EventMetrics
        //                    {
        //                        TypeEvent = typeEvent,
        //                        Campaign = campaignId.ToString(),
        //                        DateEvent = DateTime.Now,
        //                    };
        //                    db.EventMetrics.Add(eventMetric);
        //                    db.Entry(campaign).State = System.Data.Entity.EntityState.Modified;
        //                    db.SaveChanges();
        //                    Dictionary<string, string> eventMeticsList = new Dictionary<string, string>();
        //                    foreach (JProperty propertyEnd in fullChild.Properties())
        //                    {
        //                        var eventMetricDetail = new EventMetricDetails
        //                        {
        //                            Key = propertyEnd.Name,
        //                            Value = propertyEnd.Value.ToString(),
        //                            EventMetricId = eventMetric.Id
        //                        };
        //                        db.EventMetricDetails.Add(eventMetricDetail);
        //                    }
        //                    db.SaveChanges();
        //                }
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return BadRequest(ex.ToString());
        //    }
        //    return Ok();
        //}
        [ResponseType(typeof(EventMetrics))]
        public IHttpActionResult PostEventMetrics()
        {
            var httpRequest = Request.Content.ReadAsStringAsync();
            var jsonRequest = httpRequest.Result;
            var jsonObjects = JArray.Parse(jsonRequest);
            try
            {
                foreach (JObject childContent in jsonObjects.Children<JObject>())
                {
                    //foreach (JProperty property in childContent.Properties())
                    //{
                        var eventMetricSingle = new EventMetricSingles();
                        eventMetricSingle.Email= childContent["email"]==null?string.Empty: childContent["email"].ToString();
                        eventMetricSingle.AsmGroupId = childContent["asm_group_id"] == null ? string.Empty : childContent["asm_group_id"].ToString();
                        eventMetricSingle.CampaignId = childContent["newsletter"] == null ? string.Empty : childContent["newsletter"]["newsletter_id"].ToString();
                        eventMetricSingle.Category = childContent["category"] == null ? string.Empty : childContent["category"].ToString();
                        eventMetricSingle.CreatedDate = DateTime.Now;
                        eventMetricSingle.Event = childContent["event"] == null ? string.Empty : childContent["event"].ToString();
                        eventMetricSingle.Ip = childContent["ip"] == null ? string.Empty : childContent["ip"].ToString();
                        eventMetricSingle.SgEventId = childContent["sg_event_id"] == null ? string.Empty : childContent["sg_event_id"].ToString();
                        eventMetricSingle.SgMessageId = childContent["sg_message_id"] == null ? string.Empty : childContent["sg_message_id"].ToString();
                        eventMetricSingle.SmtpId = childContent["smtp-id"] == null ? string.Empty : childContent["smtp-id"].ToString();
                        eventMetricSingle.TimeStamp = childContent["timestamp"] == null ? string.Empty : childContent["timestamp"].ToString();
                        eventMetricSingle.Url = childContent["url"] == null ? string.Empty : childContent["url"].ToString();
                        eventMetricSingle.UserAgent = childContent["useragent"] == null ? string.Empty : childContent["useragent"].ToString();
                        eventMetricSingle.Reason = childContent["reason"] == null ? string.Empty : childContent["reason"].ToString();
                        eventMetricSingle.Type = childContent["type"] == null ? string.Empty : childContent["type"].ToString();
                        db.EventMetricSingles.Add(eventMetricSingle);
                        db.Entry(eventMetricSingle).State = EntityState.Added;
                        db.SaveChanges();
                    //}
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
            return Ok();
        }

        // DELETE: api/EventMetrics/5
        [ResponseType(typeof(EventMetrics))]
        public IHttpActionResult DeleteEventMetrics(long id)
        {
            EventMetrics eventMetrics = db.EventMetrics.Find(id);
            if (eventMetrics == null)
            {
                return NotFound();
            }

            db.EventMetrics.Remove(eventMetrics);
            db.SaveChanges();

            return Ok(eventMetrics);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool EventMetricsExists(long id)
        {
            return db.EventMetrics.Count(e => e.Id == id) > 0;
        }
    }
}