.class public final Lgip;
.super Ljava/lang/Object;
.source "VideoDetailTabHostFragment.java"

# interfaces
.implements Lfek;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lgip;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 1
    .parameter

    .prologue
    .line 829
    if-eqz p1, :cond_0

    .line 830
    iget-object v0, p0, Lgip;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V

    .line 832
    :cond_0
    return-void
.end method
