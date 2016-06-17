.class public Ldkv;
.super Lhic;
.source "ActionPresenter.java"


# instance fields
.field private a:Lhjo;

.field private b:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lhic;-><init>()V

    .line 87
    return-void
.end method

.method private static a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p1, Lcom/wandoujia/api/proto/Action;->text:Ljava/lang/String;

    invoke-static {p0, v0}, Ldkv;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-static {p0, p1}, Ldkv;->a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;)V

    .line 110
    new-instance v0, Ldkw;

    invoke-direct {v0, p2, p1}, Ldkw;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/api/proto/Action;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lhic;->a()V

    .line 166
    iget-object v0, p0, Ldkv;->a:Lhjo;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ldkv;->a:Lhjo;

    invoke-virtual {v0}, Lhjo;->a()V

    .line 170
    :cond_0
    iget-object v0, p0, Ldkv;->b:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Ldkv;->b:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a()V

    .line 173
    :cond_1
    return-void
.end method

.method protected a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    sget-object v0, Ldkz;->a:[I

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    invoke-static {v0, v1, p1}, Ldkv;->a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 89
    :goto_0
    return-void

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Ldkv;->a:Lhjo;

    if-nez v0, :cond_1

    .line 46
    new-instance v1, Lhjo;

    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-direct {v1, v0}, Lhjo;-><init>(Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    iput-object v1, p0, Ldkv;->a:Lhjo;

    .line 48
    :cond_1
    iget-object v0, p0, Ldkv;->a:Lhjo;

    invoke-virtual {v0, p1}, Lhjo;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    invoke-static {v0, v1, p1}, Ldkv;->a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;Lcom/wandoujia/ripple_framework/model/Model;)V

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Ldkv;->b:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    if-nez v0, :cond_3

    .line 56
    new-instance v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-direct {v1, v0}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;-><init>(Lcom/wandoujia/ripple_framework/view/CustomFontTextView;)V

    iput-object v1, p0, Ldkv;->b:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    .line 58
    :cond_3
    iget-object v0, p0, Ldkv;->b:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    invoke-virtual {v0, p1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    invoke-static {v0, v1, p1}, Ldkv;->a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;Lcom/wandoujia/ripple_framework/model/Model;)V

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    :cond_5
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->action:Lcom/wandoujia/api/proto/Action;

    invoke-static {v0, v1, p1}, Ldkv;->a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 71
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e04d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldkv;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :pswitch_3
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/wandoujia/ripple_framework/action/ActionType;->CLEAR_DOWNLOAD_COMPLETE_APP:Lcom/wandoujia/ripple_framework/action/ActionType;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/action/ActionType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/wandoujia/ripple_framework/action/ActionType;->CLEAR_DOWNLOAD_COMPLETE_MM:Lcom/wandoujia/ripple_framework/action/ActionType;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/action/ActionType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 80
    :cond_6
    invoke-virtual {p0}, Ldkv;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    invoke-static {v0, v1}, Ldkv;->a(Landroid/view/View;Lcom/wandoujia/api/proto/Action;)V

    new-instance v2, Ldkx;

    invoke-direct {v2, v1}, Ldkx;-><init>(Lcom/wandoujia/api/proto/Action;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
