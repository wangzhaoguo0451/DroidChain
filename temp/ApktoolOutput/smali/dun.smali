.class public final Ldun;
.super Ldcl;
.source "SubscribeOnBoardFragment.java"


# instance fields
.field private a:I

.field private synthetic b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;Lerv;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    iput-object p1, p0, Ldun;->b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    .line 235
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->c()I

    move-result v0

    invoke-direct {p0, p2, v0}, Ldcl;-><init>(Lerv;I)V

    .line 237
    const/4 v0, 0x1

    iput v0, p0, Ldun;->a:I

    .line 238
    return-void
.end method


# virtual methods
.method protected final d(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 242
    if-nez p2, :cond_0

    .line 243
    iget-object v0, p0, Ldun;->b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->c()I

    move-result v0

    .line 254
    :goto_0
    return v0

    .line 244
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move v0, v1

    .line 247
    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Ldun;->b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->f(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lhaz;

    move-result-object v0

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    iget-object v2, p0, Ldun;->b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->e(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lhaz;

    move-result-object v2

    iget-object v2, v2, Lerv;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->END:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Ldun;->b:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->g(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)Lhaz;

    move-result-object v0

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    move v0, v1

    .line 251
    goto :goto_0

    .line 254
    :cond_2
    iget v0, p0, Ldun;->a:I

    goto :goto_0
.end method
