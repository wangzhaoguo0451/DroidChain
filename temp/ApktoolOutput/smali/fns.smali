.class public final Lfns;
.super Ljava/lang/Object;
.source "CommunityBallotInfoView.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

.field private synthetic b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lfns;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    iput-object p2, p0, Lfns;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lfcl;

    iget-object v1, p0, Lfns;->b:Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/views/CommunityBallotInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfns;->a:Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/http/model/CommunityGroupModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfcl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lfcl;->execute()V

    .line 117
    return-void
.end method
