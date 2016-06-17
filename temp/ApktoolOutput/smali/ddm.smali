.class public final Lddm;
.super Ljava/lang/Object;
.source "CategoryOverallFragment.java"

# interfaces
.implements Ldfm;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lddm;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lddm;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;)Ldfm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lddm;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;)Ldfm;

    move-result-object v0

    invoke-interface {v0, p1}, Ldfm;->a(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lddm;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;

    iget-object v1, p0, Lddm;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->a(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;)I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->a(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;I)I

    .line 89
    iget-object v0, p0, Lddm;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;)Ldfm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lddm;->a:Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;->b(Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;)Ldfm;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldfm;->a(II)V

    .line 92
    :cond_0
    return-void
.end method
