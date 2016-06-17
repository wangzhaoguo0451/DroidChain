.class public final Ldfa;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Lhoa;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/fragment/DetailFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/fragment/DetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Ldfa;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 236
    if-nez p2, :cond_1

    move v0, v1

    .line 237
    :goto_0
    iget-object v2, p0, Ldfa;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->h(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ldfa;->a:Lcom/wandoujia/jupiter/fragment/DetailFragment;

    invoke-static {v2}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->i(Lcom/wandoujia/jupiter/fragment/DetailFragment;)Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    move-result-object v2

    invoke-static {v2, v0}, Lgs;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v1

    .line 236
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 237
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
