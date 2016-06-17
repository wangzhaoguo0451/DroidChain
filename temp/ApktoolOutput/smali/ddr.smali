.class public final Lddr;
.super Landroid/database/DataSetObserver;
.source "SubCategoryView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/category/view/SubCategoryView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/category/view/SubCategoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lddr;->a:Lcom/wandoujia/jupiter/category/view/SubCategoryView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 49
    iget-object v0, p0, Lddr;->a:Lcom/wandoujia/jupiter/category/view/SubCategoryView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/view/SubCategoryView;->a(Lcom/wandoujia/jupiter/category/view/SubCategoryView;)V

    .line 50
    return-void
.end method
