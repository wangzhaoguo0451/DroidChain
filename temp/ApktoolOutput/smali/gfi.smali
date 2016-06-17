.class final Lgfi;
.super Ljava/lang/Object;
.source "VideoDownloadModelProcessHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/wandoujia/p4/video/model/VideoSharpness;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/model/VideoSharpness;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lgfi;->a:Lcom/wandoujia/p4/video/model/VideoSharpness;

    .line 201
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    check-cast p1, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    check-cast p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    iget-object v1, p0, Lgfi;->a:Lcom/wandoujia/p4/video/model/VideoSharpness;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    iget-object v1, p0, Lgfi;->a:Lcom/wandoujia/p4/video/model/VideoSharpness;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    iget-object v1, p0, Lgfi;->a:Lcom/wandoujia/p4/video/model/VideoSharpness;

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    iget-object v1, p0, Lgfi;->a:Lcom/wandoujia/p4/video/model/VideoSharpness;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
