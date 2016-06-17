.class public final Lduv;
.super Ldcm;
.source "SubscribeTimeLineFragment.java"


# instance fields
.field private synthetic g:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lduv;->g:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;

    invoke-direct {p0}, Ldcm;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lduv;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    sget-object v0, Ldut;->a:[I

    invoke-virtual {p2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-super {p0, p1, p2}, Ldcm;->a(Landroid/view/ViewGroup;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lerf;

    move-result-object v0

    :goto_0
    return-object v0

    .line 144
    :pswitch_0
    invoke-static {p1}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->a(Landroid/view/ViewGroup;)Lerf;

    move-result-object v0

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
