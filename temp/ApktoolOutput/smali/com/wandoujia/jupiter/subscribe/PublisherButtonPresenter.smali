.class public final Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;
.super Lhic;
.source "PublisherButtonPresenter.java"


# instance fields
.field public a:Lgcd;

.field public b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

.field public c:Lcom/wandoujia/ripple_framework/model/Model;

.field private d:Lgcj;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/view/CustomFontTextView;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lhic;-><init>()V

    .line 37
    new-instance v0, Ldts;

    invoke-direct {v0, p0}, Ldts;-><init>(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->d:Lgcj;

    .line 72
    iput-object p1, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    .line 73
    invoke-static {}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a()Lcom/wandoujia/p4/subscribe/core/SubscribeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->d:Lgcj;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/subscribe/core/SubscribeManager;->a(Lgcj;)V

    .line 74
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    .line 150
    invoke-super {p0}, Lhic;->a()V

    .line 151
    return-void
.end method

.method public final a(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    sget-object v0, Ldtv;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 102
    :pswitch_0
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020475

    invoke-direct {v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 104
    const/16 v2, 0x21

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f020341

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setBackgroundResource(I)V

    .line 109
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    new-instance v1, Ldtt;

    iget-object v2, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v1, p0, v2}, Ldtt;-><init>(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0, v5}, Ldux;->a(Lcom/wandoujia/ripple_framework/model/Model;Z)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f0e0583

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    const v1, 0x7f020347

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    new-instance v1, Ldtu;

    iget-object v2, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v1, p0, v2}, Ldtu;-><init>(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v0, v4}, Ldux;->a(Lcom/wandoujia/ripple_framework/model/Model;Z)V

    goto/16 :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-eq v0, p1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a()V

    .line 94
    :cond_2
    iput-object p1, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 95
    new-instance v0, Ldtl;

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->b:Lcom/wandoujia/ripple_framework/view/CustomFontTextView;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/view/CustomFontTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldtl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    .line 96
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    invoke-virtual {v0}, Lgcd;->hasSubscribed()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->NOT_SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    goto :goto_1
.end method
