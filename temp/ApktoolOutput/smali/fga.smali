.class public final Lfga;
.super Ljava/lang/Object;
.source "CommunityNotificationCardModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;


# instance fields
.field public a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getComment()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getAuthor()Lcom/wandoujia/p4/community/http/model/CommunityUserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityUserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getComment()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lfga;->a:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getComment()Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getPicture()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/wandoujia/p4/community/http/model/CommunityReplyModel;->getPicture()Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/p4/community/http/model/CommunityImageInfo;->url:Ljava/lang/String;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
