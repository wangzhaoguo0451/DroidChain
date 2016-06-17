.class final Lfcr;
.super Ljava/lang/Object;
.source "CommunityDeleteAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfcq;


# direct methods
.method constructor <init>(Lfcq;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lfcr;->a:Lfcq;

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
    iget-object v0, p0, Lfcr;->a:Lfcq;

    invoke-static {v0}, Lfcq;->a(Lfcq;)V

    .line 57
    return-void
.end method
