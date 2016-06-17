.class public final Lgge;
.super Ljava/lang/Object;
.source "VideoPlayRecordDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lggh;

.field private synthetic b:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;


# direct methods
.method public constructor <init>(Lggh;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lgge;->a:Lggh;

    iput-object p2, p0, Lgge;->b:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lgge;->a:Lggh;

    iget-object v1, p0, Lgge;->b:Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    invoke-interface {v0, v1}, Lggh;->a(Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V

    .line 178
    return-void
.end method
