.class public final Leet;
.super Lees;
.source "DownloadRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lees;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(I)Lees;
    .locals 1
    .parameter

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Leet;->b(I)Leet;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Leet;
    .locals 2
    .parameter

    .prologue
    .line 453
    const-string v0, "version_code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Leet;->a(Ljava/lang/String;Ljava/lang/String;)Lees;

    .line 454
    return-object p0
.end method
