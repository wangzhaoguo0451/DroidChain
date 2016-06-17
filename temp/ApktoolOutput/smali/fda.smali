.class final Lfda;
.super Ljava/lang/Object;
.source "CommunityForbidUserAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfcy;


# direct methods
.method constructor <init>(Lfcy;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lfda;->a:Lfcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lfda;->a:Lfcy;

    invoke-static {v0}, Lfcy;->a(Lfcy;)V

    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 49
    return-void
.end method
