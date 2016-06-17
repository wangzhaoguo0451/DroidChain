.class public final Lfik;
.super Leun;
.source "CommunityUserInfoListFragment.java"


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
.field private synthetic b:Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lfik;->b:Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;

    invoke-direct {p0}, Leun;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lfik;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)V

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
    .line 160
    invoke-super {p0, p1}, Leun;->a(Ljava/util/List;)V

    .line 161
    iget-object v0, p0, Lfik;->b:Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)Lfil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfil;->a(Ljava/util/List;)V

    .line 162
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lfik;->b:Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->b(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)Leup;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Leup;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
