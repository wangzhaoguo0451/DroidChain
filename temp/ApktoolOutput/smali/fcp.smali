.class final Lfcp;
.super Ljava/lang/Object;
.source "CommunityBallotGroupAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lfcl;


# direct methods
.method constructor <init>(Lfcl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lfcp;->b:Lfcl;

    iput-object p2, p0, Lfcp;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lfcp;->b:Lfcl;

    invoke-static {v0}, Lfcl;->a(Lfcl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfcp;->a:Ljava/lang/String;

    sget v2, Ldxa;->a:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 103
    return-void
.end method
