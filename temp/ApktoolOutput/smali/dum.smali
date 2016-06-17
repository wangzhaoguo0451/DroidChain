.class public final Ldum;
.super Ldcm;
.source "SubscribeOnBoardFragment.java"


# instance fields
.field private synthetic g:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Ldum;->g:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-direct {p0}, Ldcm;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Ldum;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    sget-object v0, Ldul;->a:[I

    invoke-virtual {p2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 121
    invoke-super {p0, p1, p2}, Ldcm;->a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;

    move-result-object v0

    :goto_0
    return-object v0

    .line 117
    :pswitch_0
    iget-object v0, p0, Ldum;->g:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->a(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;Landroid/view/ViewGroup;)Lerf;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-static {p1}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->a(Landroid/view/ViewGroup;)Lerf;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
