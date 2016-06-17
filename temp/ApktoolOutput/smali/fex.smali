.class final Lfex;
.super Ljava/lang/Object;
.source "CommunityStickTopicAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfew;


# direct methods
.method constructor <init>(Lfew;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lfex;->a:Lfew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-object v0, p0, Lfex;->a:Lfew;

    iget-object v0, v0, Lfew;->a:Lfev;

    invoke-static {v0}, Lfev;->c(Lfev;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lfex;->a:Lfew;

    iget-object v1, v1, Lfew;->a:Lfev;

    invoke-static {v1}, Lfev;->c(Lfev;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0229

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfex;->a:Lfew;

    iget-object v2, v2, Lfew;->a:Lfev;

    invoke-static {v2}, Lfev;->c(Lfev;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0228

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfex;->a:Lfew;

    iget-object v3, v3, Lfew;->a:Lfev;

    invoke-static {v3}, Lfev;->c(Lfev;)Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0e0273

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Ld;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoj;

    .line 59
    return-void
.end method
