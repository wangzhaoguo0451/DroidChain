.class public final Lfqw;
.super Lhhl;
.source "FeedbackActivity.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0x32

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    iget-object v2, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const v3, 0x7f0e045c

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Ldxa;->b:I

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v1

    invoke-virtual {v1}, Ldxa;->a()V

    .line 233
    :goto_0
    return v0

    .line 208
    :cond_0
    iget-object v1, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 211
    iget-object v3, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->a(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v3}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->c(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    iget-object v1, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;I)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    iget-object v1, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v1, v7}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;I)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-static {v2}, Lcom/wandoujia/base/utils/TextUtil;->checkEmail(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    iget-object v1, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;I)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    iget-object v1, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->b(Lcom/wandoujia/p4/feedback/FeedbackActivity;I)V

    goto :goto_0

    .line 221
    :cond_4
    invoke-static {}, Lfru;->a()Lfru;

    iget-object v3, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    iget-object v4, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v4}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->c(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-static {v6}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->d(Lcom/wandoujia/p4/feedback/FeedbackActivity;)Ljava/util/HashMap;

    move-result-object v6

    new-instance v8, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;

    invoke-direct {v8}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;-><init>()V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_6

    invoke-virtual {v1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v8, v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->setSubject(Ljava/lang/String;)V

    new-instance v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;

    invoke-direct {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;->setBody(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->setComment(Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketComment;)V

    new-instance v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequester;

    invoke-direct {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequester;-><init>()V

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequester;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequester;->setEmail(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->setRequester(Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequester;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;

    const v2, 0x169f859

    invoke-direct {v1, v2, v4}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;

    const v2, 0x1547d02

    invoke-static {v3}, Lcom/wandoujia/udid/UDIDUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;

    const v2, 0x154c433

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getSdkReleaseVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;

    const v2, 0x15493dd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;

    const v2, 0x15493d3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketCustomFieldOptionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->setCustom_fields(Ljava/util/List;)V

    if-eqz v6, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "PARAM_DATA_ID"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "PARAM_DATA_NAME"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "PARAM_DATA_TYPE"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;->setTags(Ljava/util/ArrayList;)V

    :cond_5
    new-instance v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequest;

    invoke-direct {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequest;-><init>()V

    invoke-virtual {v0, v8}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequest;->setTicket(Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Ticket;)V

    sget-object v1, Lcom/wandoujia/entities/app/RequestInfo;->ZENDESK_CREATE_TICKET:Lcom/wandoujia/entities/app/RequestInfo;

    invoke-virtual {v1}, Lcom/wandoujia/entities/app/RequestInfo;->getURL()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfry;

    invoke-direct {v2, v1, v0}, Lfry;-><init>(Ljava/lang/String;Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$TicketRequest;)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lfqw;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->finish()V

    .line 225
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->FEEDBACK:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SUBMIT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lfqw;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    move v0, v7

    .line 231
    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 221
    goto/16 :goto_1
.end method
