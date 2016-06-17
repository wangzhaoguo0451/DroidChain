.class final Lfcn;
.super Ljava/lang/Object;
.source "CommunityBallotGroupAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfcl;


# direct methods
.method constructor <init>(Lfcl;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lfcn;->a:Lfcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lfcn;->a:Lfcl;

    invoke-static {v0}, Lfcl;->a(Lfcl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->t(Landroid/content/Context;)V

    .line 57
    return-void
.end method
