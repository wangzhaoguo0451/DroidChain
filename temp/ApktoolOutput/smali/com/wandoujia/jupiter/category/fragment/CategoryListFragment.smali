.class public Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;
.super Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;
.source "CategoryListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;-><init>()V

    .line 89
    return-void
.end method

.method public static a(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;)Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;
    .locals 4
    .parameter

    .prologue
    .line 58
    new-instance v1, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;-><init>()V

    .line 60
    sget-object v0, Lddk;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0166

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    #getter for: Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->uri:Ljava/lang/String;
    invoke-static {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->access$000(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;)Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->url:Ljava/lang/String;
    invoke-static {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->access$100(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v1

    .line 62
    :pswitch_0
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0167

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0169

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->n:Leqw;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lhhq;

    iget-object v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhhq;-><init>(Ljava/lang/String;Leqx;)V

    .line 78
    new-instance v1, Lddn;

    invoke-direct {v1}, Lddn;-><init>()V

    invoke-virtual {v0, v1}, Lhhq;->a(Leqx;)V

    .line 79
    return-object v0
.end method

.method protected final a()Lum;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lddl;

    iget-object v1, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->c:Lhaw;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lddl;-><init>(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;Lerv;B)V

    return-object v0
.end method
