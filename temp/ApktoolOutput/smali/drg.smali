.class public final Ldrg;
.super Ljava/lang/Object;
.source "AppFilterProcessorFactory.java"

# interfaces
.implements Leqx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leqx",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lgdj;->a()I

    move-result v0

    sput v0, Ldrg;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ldrg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 104
    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 106
    sget-object v1, Ldrb;->a:[I

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Ldrg;->a:I

    div-int/2addr v1, v3

    .line 114
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->p()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 115
    if-nez v1, :cond_1

    .line 116
    const/4 v1, 0x1

    .line 118
    :cond_1
    iget-object v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    sget v4, Ldrg;->a:I

    mul-int/2addr v1, v4

    invoke-static {v3, v1}, Ld;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(Ljava/util/List;)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->symbol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    const v3, 0x7fffffff

    invoke-static {v1, v3}, Ld;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 139
    :cond_2
    return-object p1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
