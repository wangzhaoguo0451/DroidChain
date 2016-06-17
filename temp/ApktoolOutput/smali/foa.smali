.class public final Lfoa;
.super Ljava/lang/Object;
.source "CommunityTopicListBannerView.java"

# interfaces
.implements Lhw;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lfoa;->a:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lfoa;->a:Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;->a(Lcom/wandoujia/p4/community/views/CommunityTopicListBannerView;)Lcom/wandoujia/phoenix2/av/view/PagePointsBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/phoenix2/av/view/PagePointsBox;->b(I)V

    .line 60
    return-void
.end method

.method public final a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 63
    return-void
.end method
