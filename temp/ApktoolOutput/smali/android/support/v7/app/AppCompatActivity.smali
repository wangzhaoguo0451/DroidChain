.class public Landroid/support/v7/app/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Lbv;
.implements Lmv;


# instance fields
.field private a:Lmw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-static {p0}, Lat;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_8

    .line 335
    invoke-static {p0, v0}, Lat;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 336
    invoke-static {p0}, Lbu;->a(Landroid/content/Context;)Lbu;

    move-result-object v5

    .line 337
    instance-of v0, p0, Lbv;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Lbv;

    invoke-interface {v0}, Lbv;->a()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_9

    invoke-static {p0}, Lat;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v5, Lbu;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    invoke-virtual {v5, v0}, Lbu;->a(Landroid/content/ComponentName;)Lbu;

    iget-object v0, v5, Lbu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    iget-object v0, v5, Lbu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v5, Lbu;->a:Ljava/util/ArrayList;

    iget-object v3, v5, Lbu;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    aget-object v6, v0, v2

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v6, 0x1000c000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, v5, Lbu;->b:Landroid/content/Context;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_5

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    move v2, v1

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    new-instance v2, Landroid/content/Intent;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v5, Lbu;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 342
    :cond_4
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v0, v1

    .line 355
    :goto_4
    return v0

    .line 338
    :cond_5
    const/16 v4, 0xb

    if-lt v6, v4, :cond_3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    move v2, v1

    goto :goto_2

    .line 342
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 346
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    goto :goto_3

    .line 351
    :cond_7
    invoke-static {p0, v0}, Lat;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    move v0, v2

    .line 355
    goto :goto_4

    :cond_9
    move-object v3, v0

    goto/16 :goto_1

    :cond_a
    move-object v0, v4

    goto/16 :goto_0
.end method

.method private c()Lmw;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->a:Lmw;

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lmw;->a(Landroid/content/Context;Landroid/view/Window;Lmv;)Lmw;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->a:Lmw;

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->a:Lmw;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 369
    invoke-static {p0}, Lat;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmw;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->g()V

    .line 196
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->d()V

    .line 128
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->j()V

    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw;->a(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 159
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->h()V

    .line 160
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 149
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Z

    move-result v0

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->c()V

    .line 66
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 139
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->f()V

    .line 140
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 133
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->e()V

    .line 134
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 165
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw;->a(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw;->a(I)V

    .line 107
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmw;->a(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmw;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Lmw;

    move-result-object v0

    invoke-virtual {v0}, Lmw;->g()V

    .line 189
    return-void
.end method
