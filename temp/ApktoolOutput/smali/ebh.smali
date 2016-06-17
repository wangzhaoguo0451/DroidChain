.class final Lebh;
.super Ljava/lang/Object;
.source "FolderMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 397
    const-string v0, "folder_gift_list"

    invoke-static {v0}, Ld;->M(Ljava/lang/String;)V

    .line 398
    return-void
.end method
