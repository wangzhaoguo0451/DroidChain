.class public final Lgdy;
.super Ljava/lang/Object;
.source "OpenVideoDetailAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Landroid/content/Context;

.field private d:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

.field private e:Lcom/wandoujia/p4/video/model/VideoType;

.field private f:Lcom/wandoujia/p4/video/model/VideoSubType;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/wandoujia/p4/video/model/VideoType;Lcom/wandoujia/p4/video/model/VideoSubType;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lgdy;->c:Landroid/content/Context;

    .line 35
    iput-wide p2, p0, Lgdy;->b:J

    .line 36
    iput-object p4, p0, Lgdy;->a:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lgdy;->d:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    .line 38
    iput-object p5, p0, Lgdy;->e:Lcom/wandoujia/p4/video/model/VideoType;

    .line 39
    iput-object p6, p0, Lgdy;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 40
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 9

    .prologue
    .line 44
    iget-object v0, p0, Lgdy;->c:Landroid/content/Context;

    iget-wide v2, p0, Lgdy;->b:J

    iget-object v1, p0, Lgdy;->a:Ljava/lang/String;

    iget-object v4, p0, Lgdy;->e:Lcom/wandoujia/p4/video/model/VideoType;

    iget-object v5, p0, Lgdy;->f:Lcom/wandoujia/p4/video/model/VideoSubType;

    iget-object v6, p0, Lgdy;->d:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/wandoujia/p4/video2/activity/VideoDetailActivity;

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "video_id"

    invoke-virtual {v7, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "video_title"

    invoke-virtual {v7, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_0

    const-string v1, "video_type"

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    if-eqz v5, :cond_1

    const-string v1, "sub_type"

    invoke-virtual {v7, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    if-eqz v6, :cond_2

    const-string v1, "video_detail_tab"

    invoke-virtual {v7, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_3

    const/high16 v1, 0x1000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
