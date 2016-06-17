.class final Lfco;
.super Ljava/lang/Object;
.source "CommunityBallotGroupAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfcl;


# direct methods
.method constructor <init>(Lfcl;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lfco;->a:Lfcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lfco;->a:Lfcl;

    invoke-static {v0}, Lfcl;->b(Lfcl;)V

    .line 66
    return-void
.end method
