.class public final Lfqs;
.super Ljava/lang/Object;
.source "FeedBackDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    iget-object v1, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    const v2, 0x7f0e045c

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 112
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lhoq;

    iget-object v1, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-direct {v0, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 87
    iget-object v1, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    const v2, 0x7f0e02d1

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    .line 88
    const v1, 0x7f0e023a

    new-instance v2, Lfqt;

    invoke-direct {v2}, Lfqt;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 92
    invoke-virtual {v0}, Lhoq;->a()Lhoj;

    move-result-object v0

    invoke-virtual {v0}, Lhoj;->show()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->b(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;->getAuthor_id()J

    move-result-wide v4

    .line 95
    new-instance v7, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;

    invoke-direct {v7}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v1, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;

    invoke-direct {v1}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;-><init>()V

    .line 98
    iget-object v2, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;->setBody(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v4, v5}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;->setAuthor_id(J)V

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v7, v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->setEvents(Ljava/util/List;)V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->setCreated_at(Ljava/util/Date;)V

    .line 103
    invoke-static {}, Lfru;->a()Lfru;

    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->b(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->getTicket_id()J

    move-result-wide v2

    new-instance v1, Lfrv;

    invoke-direct/range {v1 .. v6}, Lfrv;-><init>(JJLjava/lang/String;)V

    invoke-static {v1}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->b(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->c(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lfrc;

    iget-object v2, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->b(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lfrc;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->c(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v1}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->c(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 109
    iget-object v0, p0, Lfqs;->a:Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;

    invoke-static {v0}, Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;->a(Lcom/wandoujia/p4/feedback/FeedBackDialogActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
