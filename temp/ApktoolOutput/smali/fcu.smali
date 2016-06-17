.class final Lfcu;
.super Ljava/lang/Object;
.source "CommunityDeleteAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lfct;


# direct methods
.method constructor <init>(Lfct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lfcu;->b:Lfct;

    iput-object p2, p0, Lfcu;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lfcu;->b:Lfct;

    iget-object v0, v0, Lfct;->a:Lfcq;

    invoke-static {v0}, Lfcq;->d(Lfcq;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfcu;->a:Ljava/lang/String;

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 123
    return-void
.end method
