.class public Lcom/wandoujia/p4/video2/playexp/PhoenixWebDownloadProvider;
.super Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;
.source "PhoenixWebDownloadProvider.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "com.wandoujia.webdownload"

    sput-object v0, Lcom/wandoujia/p4/video2/playexp/PhoenixWebDownloadProvider;->a:Ljava/lang/String;

    .line 17
    const-string v0, "wandoujia"

    invoke-static {v0}, Lgxl;->a(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/wandoujia/p4/video2/playexp/PhoenixWebDownloadProvider;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/playexp/PhoenixWebDownloadProvider;->a(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;-><init>()V

    return-void
.end method
