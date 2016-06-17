.class final Leel;
.super Ljava/lang/Object;
.source "UninstallAppAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Leek;


# direct methods
.method constructor <init>(Leek;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Leel;->a:Leek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Leel;->a:Leek;

    invoke-static {v0}, Leek;->a(Leek;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "general"

    invoke-static {v0, v1}, Lehf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Leel;->a:Leek;

    invoke-static {v1}, Leek;->a(Leek;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;Z)V

    .line 40
    return-void
.end method
