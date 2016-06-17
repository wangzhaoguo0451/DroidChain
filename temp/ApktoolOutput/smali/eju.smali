.class final Leju;
.super Ljava/lang/Object;
.source "PhoenixAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lejq;


# direct methods
.method constructor <init>(Lejq;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Leju;->a:Lejq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Leju;->a:Lejq;

    invoke-static {v0}, Lejq;->g(Lejq;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 361
    return-void
.end method
