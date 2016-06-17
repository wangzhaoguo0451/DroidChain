.class public final Lfdy;
.super Ljava/lang/Object;
.source "CommunityOpenTopicDetailAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lfdy;->c:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    .line 58
    iput-object p2, p0, Lfdy;->a:Landroid/app/Activity;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lfdy;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lfdy;->a:Landroid/app/Activity;

    .line 44
    iput-object p1, p0, Lfdy;->b:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lfdy;->c:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    .line 47
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lfdy;->c:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "REPLY"

    iget-object v1, p0, Lfdy;->c:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getCommentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lfdy;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfdy;->c:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a(Landroid/app/Activity;Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lfdy;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfdy;->c:Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/community/http/model/CommunityNotificationModel;->getTopicId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lfdy;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lfdy;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfdy;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/community/activity/CommunityTopicDetailActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
