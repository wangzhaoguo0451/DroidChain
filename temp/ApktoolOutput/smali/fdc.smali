.class final Lfdc;
.super Ljava/lang/Object;
.source "CommunityForbidUserAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lfdb;


# direct methods
.method constructor <init>(Lfdb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lfdc;->b:Lfdb;

    iput-object p2, p0, Lfdc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lfdc;->b:Lfdb;

    iget-object v0, v0, Lfdb;->a:Lfcy;

    invoke-static {v0}, Lfcy;->c(Lfcy;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfdc;->a:Ljava/lang/String;

    sget v2, Ldxa;->a:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 83
    return-void
.end method
