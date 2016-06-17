.class public final Lgda;
.super Ljava/lang/Object;
.source "EasterEggsUtils.java"

# interfaces
.implements Lgxu;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/p4/video2/model/VideoDetailModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lgda;->a:Landroid/content/Context;

    iput-object p2, p0, Lgda;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    iget-object v1, p0, Lgda;->a:Landroid/content/Context;

    const v2, 0x7f0e0651

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lgda;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lgda;->a:Landroid/content/Context;

    const v2, 0x7f0e0616

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lgda;->b:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lgda;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ld;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    return-void
.end method
