.class public final Lfdu;
.super Ljava/lang/Object;
.source "CommunityOpenCampaignAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lfdu;->b:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lfdu;->a:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lfdu;->c:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lfdu;->d:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "phoenix.intent.action.CAMPAIGN_WEBVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lfdu;->b:Landroid/content/Context;

    const-class v2, Lcom/wandoujia/p4/community/activity/CommunityCampaignActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    const-string v1, "phoenix.intent.extra.TITLE"

    iget-object v2, p0, Lfdu;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "phoenix.intent.extra.URL"

    iget-object v2, p0, Lfdu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "group_id"

    iget-object v2, p0, Lfdu;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lfdu;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
