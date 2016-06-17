.class final Ldxi;
.super Ljava/lang/Object;
.source "LauncherAppCell.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leiu;


# direct methods
.method constructor <init>(Leiu;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Ldxi;->a:Leiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    iget-object v0, p0, Ldxi;->a:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;)V

    .line 98
    return-void
.end method
