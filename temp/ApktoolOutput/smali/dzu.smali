.class public final Ldzu;
.super Landroid/os/AsyncTask;
.source "GameFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/wandoujia/launcher/launcher/models/LauncherSuggestionModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Ldzu;->b:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    iput p2, p0, Ldzu;->a:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 191
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->f()V

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 191
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Ldzu;->b:Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;

    iget v1, p0, Ldzu;->a:I

    invoke-static {v0, v1, p1}, Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameFolderFragment;ILjava/util/List;)Z

    return-void
.end method
