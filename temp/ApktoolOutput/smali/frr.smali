.class public final Lfrr;
.super Landroid/widget/BaseAdapter;
.source "FeedbackListAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lfrr;->a:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lfrr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lfrr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 50
    if-nez p2, :cond_1

    .line 51
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030021

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v1, Lfrt;

    invoke-direct {v1, v8}, Lfrt;-><init>(B)V

    .line 54
    const v0, 0x7f0c0132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfrt;->a:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0c0134

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfrt;->b:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0c0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfrt;->c:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v1

    .line 62
    :goto_0
    iget-object v0, p0, Lfrr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;

    .line 63
    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;->getAudits()Ljava/util/List;

    move-result-object v4

    .line 64
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;

    .line 66
    iget-object v2, v3, Lfrt;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->getCreated_at()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wandoujia/base/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->getEvents()Ljava/util/List;

    move-result-object v2

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;

    .line 71
    invoke-virtual {v2}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Event;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 73
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrt;

    move-object v3, v0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, v3, Lfrt;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v1}, Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$Audits;->getTicket_id()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/wandoujia/p4/configs/Config;->b(J)I

    move-result v1

    .line 78
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 79
    iget-object v1, v3, Lfrt;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v1, v3, Lfrt;->c:Landroid/widget/TextView;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_2
    new-instance v1, Lfrs;

    invoke-direct {v1, p3, v0}, Lfrs;-><init>(Landroid/view/ViewGroup;Lcom/wandoujia/p4/feedback/zendesk/ZendeskModels$AuditsBundle;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object p2

    .line 82
    :cond_3
    iget-object v1, v3, Lfrt;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
