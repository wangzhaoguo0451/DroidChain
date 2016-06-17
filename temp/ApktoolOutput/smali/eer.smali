.class public final Leer;
.super Lees;
.source "DownloadRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lees;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lees;
    .locals 2
    .parameter

    .prologue
    .line 431
    const-string v0, "version"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Leer;->a(Ljava/lang/String;Ljava/lang/String;)Lees;

    .line 432
    return-object p0
.end method
