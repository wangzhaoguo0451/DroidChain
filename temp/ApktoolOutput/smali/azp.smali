.class public final Lazp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/support/v4/app/Fragment;

.field private final c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazp;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-object v0, p0, Lazp;->b:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lazp;->c:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lazp;->a:Landroid/app/Activity;

    iput-object p1, p0, Lazp;->b:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lazp;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lazp;->c:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazp;->b:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazp;->b:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lazp;->c:Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lazp;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazp;->a:Landroid/app/Activity;

    iget-object v1, p0, Lazp;->c:Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
