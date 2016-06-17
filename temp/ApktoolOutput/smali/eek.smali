.class public final Leek;
.super Ljava/lang/Object;
.source "UninstallAppAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Leek;->a:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Leek;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Leek;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic a(Leek;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Leek;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lhpa;->a()Lhpa;

    move-result-object v0

    invoke-virtual {v0}, Lhpa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Leek;->a:Landroid/content/Context;

    iget-object v1, p0, Leek;->c:Ljava/lang/String;

    new-instance v2, Leel;

    invoke-direct {v2, p0}, Leel;-><init>(Leek;)V

    new-instance v3, Leem;

    invoke-direct {v3}, Leem;-><init>()V

    invoke-static {v0, v1, v2, v3}, Leeh;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Leek;->b:Ljava/lang/String;

    const-string v1, "general"

    invoke-static {v0, v1}, Lehf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Leek;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method
