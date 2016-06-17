.class public final Ldwe;
.super Ljava/lang/Object;
.source "UpdateNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/update/UpdateNotification;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Ldwe;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Ldwe;->a:Lcom/wandoujia/jupiter/update/UpdateNotification;

    invoke-static {v0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->a(Lcom/wandoujia/jupiter/update/UpdateNotification;)V

    .line 224
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 226
    return-void
.end method
