.class final Ldyy;
.super Ljava/lang/Object;
.source "GameLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldyx;


# direct methods
.method constructor <init>(Ldyx;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Ldyy;->a:Ldyx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Ldyy;->a:Ldyx;

    iget-object v0, v0, Ldyx;->a:Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->a(Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ldyy;->a:Ldyx;

    iget-object v1, v1, Ldyx;->a:Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 123
    iget-object v1, p0, Ldyy;->a:Ldyx;

    iget-object v1, v1, Ldyx;->a:Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/wandoujia/game_launcher/lib/R$layout;->dialog_onboarding:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 126
    sget v2, Lcom/wandoujia/game_launcher/lib/R$id;->positive_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 127
    new-instance v2, Ldyz;

    invoke-direct {v2, v0}, Ldyz;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
