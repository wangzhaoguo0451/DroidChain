.class public final Ldcd;
.super Lhal;
.source "WebDownloadDataContext.java"


# static fields
.field public static a:Ldcd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    const-string v0, "wandoujia/webdownload"

    invoke-direct {p0, p1, v0}, Lhal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    const-string v0, "proxy"

    invoke-static {v0}, Lgxl;->b(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->VIDEO:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    new-instance v1, Lgrk;

    invoke-direct {v1}, Lgrk;-><init>()V

    invoke-static {v0, v1}, Lcom/wandoujia/p4/webdownload/WebDownloadType;->registerDownloadGenerator(Lcom/wandoujia/p4/webdownload/WebDownloadType;Lgrk;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    return-void
.end method
