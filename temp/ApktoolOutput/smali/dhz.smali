.class public final Ldhz;
.super Ldcl;
.source "DownloadListFragment.java"


# instance fields
.field private final a:I

.field private final b:Lerv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lerv;)V
    .locals 2
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
    .line 271
    invoke-direct {p0, p1}, Ldcl;-><init>(Lerv;)V

    .line 272
    iput-object p1, p0, Ldhz;->b:Lerv;

    .line 273
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Ldhz;->a:I

    .line 276
    return-void
.end method


# virtual methods
.method protected final d(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Ldhz;->b:Lerv;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 286
    :cond_0
    if-nez p2, :cond_1

    .line 287
    iget v0, p0, Ldhz;->a:I

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Ldhz;->b:Lerv;

    instance-of v0, v0, Lern;

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Ldhz;->b:Lerv;

    check-cast v0, Lern;

    iget-object v0, v0, Lern;->c:Lers;

    invoke-virtual {v0}, Lers;->a()I

    move-result v0

    sub-int v0, p2, v0

    .line 294
    :goto_1
    if-lez v0, :cond_2

    iget-object v1, p0, Ldhz;->b:Lerv;

    iget-object v1, v1, Lerv;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 295
    iget-object v1, p0, Ldhz;->b:Lerv;

    iget-object v1, v1, Lerv;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 297
    sget-object v1, Ldhy;->b:[I

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 302
    const/4 v0, 0x1

    goto :goto_0

    .line 299
    :pswitch_0
    iget v0, p0, Ldhz;->a:I

    goto :goto_0

    .line 305
    :cond_2
    invoke-super {p0, p1, p2}, Ldcl;->d(II)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, p2

    goto :goto_1

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
