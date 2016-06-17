.class public Lcom/wandoujia/jupiter/playexp/JupiterWebDownloadProvider;
.super Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;
.source "JupiterWebDownloadProvider.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "com.wandoujia.jupiter.webdownload"

    sput-object v0, Lcom/wandoujia/jupiter/playexp/JupiterWebDownloadProvider;->a:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/wandoujia/jupiter/playexp/JupiterWebDownloadProvider;->a()V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/cache/WebDownloadProvider;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "wandoujia"

    invoke-static {v0}, Lgxl;->a(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/wandoujia/jupiter/playexp/JupiterWebDownloadProvider;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/jupiter/playexp/JupiterWebDownloadProvider;->a(Ljava/lang/String;)V

    .line 28
    return-void
.end method
