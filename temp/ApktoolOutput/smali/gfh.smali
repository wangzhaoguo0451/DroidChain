.class final Lgfh;
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
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lgfh;->a:Ljava/lang/String;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lgfh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 172
    check-cast p1, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    check-cast p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lgfh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lgfh;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, -0x1

    :goto_2
    return v0

    :cond_0
    iget-object v1, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lgfh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lgfh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
