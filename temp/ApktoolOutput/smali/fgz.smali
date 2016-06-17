.class public final Lfgz;
.super Ljava/lang/Object;
.source "CommunityHomePageTabFragment.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lfgz;->a:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lfgz;->a:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    iget-object v0, v0, Lftq;->a:Lhow;

    instance-of v0, v0, Lfnv;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lfgz;->a:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;->a(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lftq;

    iget-object v0, v0, Lftq;->a:Lhow;

    check-cast v0, Lfnt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfnt;->a(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public final a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 91
    return-void
.end method
