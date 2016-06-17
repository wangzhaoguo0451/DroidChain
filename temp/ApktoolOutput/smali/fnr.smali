.class public final Lfnr;
.super Ljava/lang/Object;
.source "CommunityBallotInfoView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    iput p2, p0, Lfnr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->a(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lfnr;->a:I

    div-int/2addr v0, v1

    .line 78
    if-eqz v0, :cond_0

    iget-object v1, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->b(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->a(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;I)I

    .line 80
    iget-object v0, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->a(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->b(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 81
    iget-object v0, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->c(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Lfez;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->c(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Lfez;

    move-result-object v0

    iget-object v1, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->b(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)I

    move-result v1

    iput v1, v0, Lfez;->a:I

    invoke-virtual {v0}, Lfez;->notifyDataSetChanged()V

    invoke-virtual {v0}, Lfez;->a()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->d(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->d(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    new-instance v1, Lfez;

    iget-object v2, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v2}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->b(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)I

    move-result v2

    iget-object v3, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v3}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->d(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Lcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lfez;-><init>(ILcom/wandoujia/p4/community/http/model/CommunityTopicLikedUsersInfo;)V

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->a(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;Lfez;)Lfez;

    .line 87
    iget-object v0, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v0}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->a(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lfnr;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->c(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;)Lfez;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
