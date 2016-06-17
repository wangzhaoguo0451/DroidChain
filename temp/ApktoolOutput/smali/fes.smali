.class final Lfes;
.super Ljava/lang/Object;
.source "CommunityResignAdminAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfeq;


# direct methods
.method constructor <init>(Lfeq;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lfes;->a:Lfeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lfes;->a:Lfeq;

    invoke-static {v0}, Lfeq;->a(Lfeq;)V

    .line 55
    return-void
.end method
