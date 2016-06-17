.class public final Ldnr;
.super Lhjb;
.source "GuessCommonPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lhjb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    sparse-switch p1, :sswitch_data_0

    .line 26
    invoke-super {p0, p1, p2}, Lhjb;->a(ILcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 16
    :sswitch_0
    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :sswitch_1
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    goto :goto_0

    .line 20
    :sswitch_2
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    goto :goto_0

    .line 22
    :sswitch_3
    invoke-static {p2}, Lg;->a(Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    move-result-object v0

    goto :goto_0

    .line 24
    :sswitch_4
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->action_positive:Lcom/wandoujia/api/proto/Action;

    goto :goto_0

    .line 14
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c032a -> :sswitch_0
        0x7f0c032b -> :sswitch_3
        0x7f0c032c -> :sswitch_4
        0x7f0c032d -> :sswitch_1
        0x7f0c036f -> :sswitch_2
    .end sparse-switch
.end method
