.class public final Lfgx;
.super Leun;
.source "CommunityGroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leun",
        "<",
        "Lffw;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic b:Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lfgx;->b:Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;

    invoke-direct {p0}, Leun;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lfgx;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lffw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-super {p0, p1}, Leun;->a(Ljava/util/List;)V

    .line 309
    invoke-static {p1}, Lfnl;->a(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lfgx;->b:Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)Lfgy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfgy;->a(Ljava/util/List;)V

    .line 311
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lfgx;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lfgx;->b:Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;->d(Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;)Leup;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Leup;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
