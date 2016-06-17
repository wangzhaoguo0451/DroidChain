.class public final Ldvj;
.super Ljava/lang/Object;
.source "TopicInfoFetcher.java"


# instance fields
.field public a:Ldvv;

.field public b:Ldvv;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ldvj;->c:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Ldvj;->d:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ldvk;)Ldvv;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    const-string v0, "alias_argument"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ldvv;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ldvl;

    invoke-direct {v2, p2}, Ldvl;-><init>(Ldvk;)V

    new-instance v3, Ldvm;

    invoke-direct {v3}, Ldvm;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Ldvv;-><init>(Ljava/lang/String;Lagu;Lagt;)V

    return-object v1
.end method
