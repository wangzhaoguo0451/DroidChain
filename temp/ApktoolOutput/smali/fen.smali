.class final Lfen;
.super Ljava/lang/Object;
.source "CommunityQuitGroupAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfel;


# direct methods
.method constructor <init>(Lfel;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lfen;->a:Lfel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lfen;->a:Lfel;

    invoke-static {v0}, Lfel;->a(Lfel;)V

    .line 61
    return-void
.end method
