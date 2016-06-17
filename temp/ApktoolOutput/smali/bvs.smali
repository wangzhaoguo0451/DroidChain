.class public final Lbvs;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lbvs;->a:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lbvy;Ljava/lang/String;Lbvx;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v0, Lbvu;

    iget-object v1, p0, Lbvs;->a:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbvu;-><init>(Landroid/content/Context;Ljava/lang/String;Lbvy;Ljava/lang/String;Lbvx;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lbvu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method
