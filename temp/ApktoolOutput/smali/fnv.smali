.class public final Lfnv;
.super Lfnt;
.source "CommunityTab.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lfnt;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 89
    new-instance v0, Lfnw;

    invoke-direct {v0, p0}, Lfnw;-><init>(Lfnv;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method
