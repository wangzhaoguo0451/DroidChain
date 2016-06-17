.class public final Lexz;
.super Landroid/os/AsyncTask;
.source "CleanFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lexz;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-static {}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lexz;->a:Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;->a(Lcom/wandoujia/p4/app_launcher/clean/CleanFragment;I)V

    return-void
.end method
